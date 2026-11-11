.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -72548874
cmovl esi, edx
adc al, cl
nop
inc sil
sets dil
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
add al, 64 # instrumentation
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
add al, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and eax, 933895314
adc al, dl
not ecx
lea rcx, qword ptr [rbx + rcx + 45597]
not cx
add dx, -90
or rax, -1571963467
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
