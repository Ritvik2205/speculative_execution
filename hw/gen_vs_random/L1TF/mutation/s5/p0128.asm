.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -110 # instrumentation
btr cx, 181
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setz bl
btr si, dx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or al, cl
cmovb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
movzx eax, bl
test ax, di
test rbx, rcx
sets dl
xor rdx, 122
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, 37 # instrumentation
cmovbe di, si
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
