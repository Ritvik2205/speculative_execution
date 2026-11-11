.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
or dl, -89
btr dx, bx
xor eax, 984871847
add cl, 51
xor rax, -1657511731
or esi, eax
and al, 75
test eax, 1729060510
and cl, cl
bts eax, 222
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or sil, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
