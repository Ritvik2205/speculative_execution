.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, 22
and bl, bl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
btr dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
test dl, 9
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rsi, 82
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 35
or rbx, -72
or dl, -8
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and sil, sil
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and cx, si
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and bl, 120 # instrumentation
cmovnle esi, esi
and cl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
