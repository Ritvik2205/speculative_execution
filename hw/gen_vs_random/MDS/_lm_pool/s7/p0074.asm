.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test rbx, 12
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
test dil, dl
and al, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
xor bl, al
test sil, bl
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
