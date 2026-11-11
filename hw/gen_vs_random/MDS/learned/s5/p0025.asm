.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor dil, -3
test al, 91
and dl, dl
or dl, sil
test di, 84
jmp .bb_0.1
.bb_0.1:
test al, -81
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, -978188247
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
