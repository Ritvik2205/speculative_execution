.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 65 # instrumentation
cmovo rsi, rdx
mov al, dil
add bl, 68
bswap edx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
xor rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
sub sil, -99
movsx rax, dx
lea di, qword ptr [rcx + rbx + 9]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
