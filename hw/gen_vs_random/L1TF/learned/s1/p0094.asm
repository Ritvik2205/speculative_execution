.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
xor dl, -82
bt rsi, rdx
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
add rax, -1969014465
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
