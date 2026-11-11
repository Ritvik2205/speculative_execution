.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 23
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, -2058103810
test esi, 425331143
and edi, 23
or al, dl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
test al, dil
or dil, -76
xor eax, 984871847
test rax, 1000448998
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
