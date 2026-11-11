.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 70
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 5
test al, sil
test bl, -9
or ax, -14271
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
xor bl, sil
and al, 49
xor dil, -70
and bl, 68
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test al, dl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
cmovle rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
