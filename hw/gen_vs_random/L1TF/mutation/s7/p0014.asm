.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmp eax, 123533400
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
lea dx, qword ptr [rdx + rax + 22206]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and eax, edi
xor bl, cl
jmp .bb_0.1
.bb_0.1:
imul cx, bx
imul ecx, edi
add dl, -57 # instrumentation
setz sil
movzx si, dil
btc ebx, ebx
add cl, 39 # instrumentation
setle bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
xchg bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
