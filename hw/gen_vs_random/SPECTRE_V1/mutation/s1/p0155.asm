.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
movzx si, al
setnb al
neg rdx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
imul edx, edi, -31
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
sbb rdx, -34
sub al, dl
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add bl, -92 # instrumentation
cmovs si, cx
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
lea rbx, qword ptr [rsi + rdx + 43294]
btr rbx, rax
sbb al, 118
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
