.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and si, -121
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
or rcx, -17
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and al, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
