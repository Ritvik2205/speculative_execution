.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add al, al
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
or si, 66
jmp .bb_0.1
.bb_0.1:
inc esi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 74
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 1163013815
test rax, -1576813424
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
