.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec eax
btr cx, ax
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
test eax, edx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
add cl, 107 # instrumentation
cmovnl bx, bx
lea rdi, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
setnbe cl
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
lea rbx, qword ptr [rdi + rbx + 86]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
