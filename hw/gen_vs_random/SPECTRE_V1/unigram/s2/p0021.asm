.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
add bl, 56 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
add bl, 39 # instrumentation
cmovo eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 21
setno dl
lea cx, qword ptr [rdx + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
lea ebx, qword ptr [rcx + rcx + 43124]
cmp dl, 71
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 45
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
