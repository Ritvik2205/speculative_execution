.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx + rcx + 31865]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
sbb si, 100
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 93
add al, 64 # instrumentation
sbb al, cl
lea dx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
movsx esi, al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
bt rax, rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
add bl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
adc dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
