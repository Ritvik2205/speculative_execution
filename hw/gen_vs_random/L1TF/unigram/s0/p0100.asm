.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 66
cmovnb ebx, esi
lea eax, qword ptr [rbx + rbx + 64]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
bswap rdi
cmp edi, 81
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 18
xor dx, 38
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
dec ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
