.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rcx, rsi
lea rdx, qword ptr [rax + rbx + 37]
seto dil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 48
add bl, -40 # instrumentation
sbb rbx, 87
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
and bl, cl
add dl, -56 # instrumentation
cmovs rbx, rax
cmovs edx, esi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
imul rcx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
cmovz bx, di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
