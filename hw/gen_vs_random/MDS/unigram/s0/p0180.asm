.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
cmovle rdi, rdi
bts eax, ebx
and ecx, esi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
cmovnz rbx, rdx
or sil, sil
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
