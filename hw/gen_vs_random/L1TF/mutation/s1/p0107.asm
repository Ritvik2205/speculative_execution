.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
add cl, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
sbb rcx, rdi
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and cl, bl
add dl, -1
movsx rbx, cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
lea ax, qword ptr [rdi]
imul cx, di, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
