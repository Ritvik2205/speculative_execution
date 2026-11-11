.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
or dil, -78
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 60
and rax, -978188247
or dl, sil
test bl, dl
or dl, bl
and dil, -62
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or al, cl
and sil, -9
and bl, 68
or dil, al
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
