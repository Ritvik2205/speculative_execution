.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi + rbx + 90]
add dil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 51
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 25
bts esi, edx
xor al, -64
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 30
mov al, dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
imul rsi, rcx
add dx, 18
xor rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
