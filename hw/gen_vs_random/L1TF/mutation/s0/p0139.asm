.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
test al, -84
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
lea ecx, qword ptr [rbx + rbx + 2102]
add esi, -124
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
jmp .bb_0.2
.bb_0.2:
add cl, 65 # instrumentation
cmovo rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovl di, bx
lea dx, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
add cl, -98 # instrumentation
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
