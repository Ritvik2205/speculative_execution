.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, al
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
add dl, sil
cmp ecx, 97
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and cl, -57
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 96
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 92
add bl, 2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
add al, 64 # instrumentation
cmovnz ax, di
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
