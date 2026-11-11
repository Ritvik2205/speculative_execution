.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
and cx, -2
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor dl, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and esi, 48
test dl, bl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
or al, cl
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
