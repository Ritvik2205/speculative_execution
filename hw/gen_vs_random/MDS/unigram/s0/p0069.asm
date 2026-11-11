.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
btr eax, 51
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
cmovnz dx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
xor rdi, -9
and sil, -56
or ebx, -15
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
or ecx, ebx
test eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and bl, -53 # instrumentation
cmovbe esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
