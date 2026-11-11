.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or cl, 119
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
jmp .bb_0.1
.bb_0.1:
or al, sil
jmp .bb_0.2
.bb_0.2:
not dl
bt cx, si
and dil, bl
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
