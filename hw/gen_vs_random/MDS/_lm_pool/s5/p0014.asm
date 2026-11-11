.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or dil, dil
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or cl, sil
and dil, dl
or ax, 30524
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, dil
or al, 54
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or rax, -689609688
or cl, 119
test si, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
