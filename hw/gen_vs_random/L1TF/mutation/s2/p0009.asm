.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 37 # instrumentation
cmovbe di, si
sets dl
xor rdx, 122
test ax, di
movzx eax, bl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
test rbx, rcx
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
