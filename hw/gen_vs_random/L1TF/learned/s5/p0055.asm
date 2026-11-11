.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and cl, 41
add al, 74
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
lea rsi, qword ptr [rcx]
cmp al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
