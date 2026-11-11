.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor al, 9
not sil
xor bl, 67
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test dil, 46
or dl, dil
test bl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and ax, 5001
test rax, 337705873
xor al, bl
xor al, 9
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
test eax, -409834435
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
