.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
lea ebx, qword ptr [rdi + rbx + 24078]
btr bx, 104
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
or dl, bl
neg dl
jmp .bb_0.1
.bb_0.1:
imul si, bx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
mul rax
add dl, -52 # instrumentation
adc bx, 45
xor bl, cl
btc bx, dx
mov bx, 21854
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
