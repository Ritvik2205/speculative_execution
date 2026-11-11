.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
bt di, 236
imul bl
lea bx, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
or al, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rsi + rcx + 61]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
adc dl, 97
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 72
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
