.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
setnb dl
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
dec rax
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
not bx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
adc dl, sil
sub sil, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 11
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
