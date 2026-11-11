.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 107 # instrumentation
lea edi, qword ptr [rdx + rax]
btr edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovnz cx, cx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovle ecx, edi
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
movzx di, sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
