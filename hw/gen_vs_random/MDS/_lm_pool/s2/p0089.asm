.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and dl, sil
test al, -81
or al, 25
test eax, 1729060510
jmp .bb_0.1
.bb_0.1:
and dl, -73
bt ecx, 32
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 51
jmp .bb_0.2
.bb_0.2:
xor di, 40
and al, 35
test dl, al
cmovle ax, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and di, 99
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
