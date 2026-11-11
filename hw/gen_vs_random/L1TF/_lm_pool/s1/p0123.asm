.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
imul al
xor bl, -5
cmp dl, dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rax, qword ptr [rcx + rdx + 3]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
