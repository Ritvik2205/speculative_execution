.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
setz dil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
add bl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 63
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
add cl, -123 # instrumentation
cmovnp rbx, rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmp al, 53
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
movsx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
