.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
test al, -99
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and dl, -111
cmovnb rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
setnle al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmovl ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
sub edx, -63
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
sub al, 63
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
