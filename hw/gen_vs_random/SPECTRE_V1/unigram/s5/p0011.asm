.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, dl
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
cmovnz ax, di
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
mul cx
add al, 110 # instrumentation
movzx bx, sil
lea di, qword ptr [rax]
add cl, 44 # instrumentation
cmovz eax, ebx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
or edi, 54
test dil, -116
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
