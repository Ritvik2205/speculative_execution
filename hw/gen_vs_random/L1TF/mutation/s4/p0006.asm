.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 82 # instrumentation
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, -84 # instrumentation
setno bl
inc rcx
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
mov edi, esi
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
adc al, 70
bt rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
