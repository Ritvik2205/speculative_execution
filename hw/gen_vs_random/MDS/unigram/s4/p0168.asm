.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovo ebx, ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and bl, 121 # instrumentation
bt rax, 4
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 60
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or cx, 49
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and dl, -59 # instrumentation
cmovbe cx, bx
or al, dl
test bl, -14
cmovbe edi, edx
test esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
