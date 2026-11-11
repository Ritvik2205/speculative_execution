.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp al, dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea di, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
setnp cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
xchg rax, rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
xor cl, dil
cmovo rcx, rcx
or edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
