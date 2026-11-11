.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
btr bx, 104
lea ebx, qword ptr [rdi + rbx + 24078]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
neg dl
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
mov bx, 21854
btc bx, dx
add dl, -52 # instrumentation
adc bx, 45
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
imul si, bx
xor bl, cl
mul rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
