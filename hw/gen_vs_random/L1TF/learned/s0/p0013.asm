.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
imul ax, bx, 26
sbb dil, bl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
btc bx, ax
lea di, qword ptr [rdx + rdi + 13]
not al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
