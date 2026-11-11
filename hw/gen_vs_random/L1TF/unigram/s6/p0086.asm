.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
test cx, dx
mul al
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
lea dx, qword ptr [rdi + rcx + 29]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], esi
add cl, -72 # instrumentation
cmovp esi, esi
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 26
or dl, dl
add al, 87 # instrumentation
cmovo rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
