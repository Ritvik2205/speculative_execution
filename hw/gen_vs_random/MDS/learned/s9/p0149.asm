.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rcx, 107
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test rsi, 77
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and ebx, 46
btc esi, 199
or dil, -78
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
