.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
btr edx, ebx
cmovnz cx, cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
cmovle ecx, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add cl, 107 # instrumentation
lea edi, qword ptr [rdx + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
mul al
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
test rsi, rax
imul rax, rdi, 109
add bl, -118 # instrumentation
cmovp si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
