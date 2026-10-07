.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rax], dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov dl, byte ptr [r14 + rbx] 
lfence
movzx dx, al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rsi], 28 
lfence
cmp ebx, ecx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovno rcx, qword ptr [r14 + rbx] 
lfence
or di, 1 # instrumentation
lfence
and dx, di # instrumentation
lfence
shr dx, 1 # instrumentation
lfence
div di 
lfence
add cl, 105 # instrumentation
lfence
jnz .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rdi], 7 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rdx], 8 
lfence
add cl, -71 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rsi], di 
lfence
setnz dil 
lfence
inc dil 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rax], dx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul dx, word ptr [r14 + rcx], -86 
lfence
mov rdx, rdi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
