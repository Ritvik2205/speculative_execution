.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
xor dil, 81
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and dil, cl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and dil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and al, -8
and dil, 125
cmovle ax, di
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
