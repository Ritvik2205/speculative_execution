.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
btr si, bx
xchg rdi, rax
mov dl, bl
xor rax, rbx
test ecx, 71
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
add dl, 27 # instrumentation
setnle dl
bts edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
setbe al
xor al, al
xchg ax, cx
lea rax, qword ptr [rcx + rdx + 69]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
