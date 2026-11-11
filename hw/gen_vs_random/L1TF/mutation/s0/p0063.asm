.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
test ax, di
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
test rbx, rcx
xor rdx, 122
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
movzx eax, bl
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
add dl, 37 # instrumentation
cmovbe di, si
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
sets dl
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
