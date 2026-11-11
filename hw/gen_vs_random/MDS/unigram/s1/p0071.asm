.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rbx, 65
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 100
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dl, dl
cmovl rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and dil, dil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
