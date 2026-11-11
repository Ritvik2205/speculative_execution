.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
btr rbx, 155
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
test al, -81
and rdi, rdx
btr di, 89
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
xor al, 8
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test sil, bl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
or ecx, 65
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
bts ax, 22
btr ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
