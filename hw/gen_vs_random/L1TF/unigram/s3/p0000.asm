.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs eax, eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 28
sbb rdx, 5
lea dx, qword ptr [rdi]
not ecx
not bx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 64
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
mov dl, dil
and dil, 16
btr di, bx
lea ecx, qword ptr [rdx + rsi + 42]
cmovs rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
