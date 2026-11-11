.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
sub cl, 116
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
sub al, dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
adc si, 7
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
sbb dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
cmovnbe rax, rbx
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
cmovnbe rcx, rbx
test bl, bl
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
imul cl
add dl, -114 # instrumentation
cmovl cx, si
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, dl
adc bl, dl
and dl, dil
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
cmovns rbx, rax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovs rax, rbx
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
