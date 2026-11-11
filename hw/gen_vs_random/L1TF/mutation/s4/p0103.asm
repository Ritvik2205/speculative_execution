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
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
bt ax, 205
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
nop
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
add al, -113 # instrumentation
mov rdi, -9188947962549951402
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
sbb di, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
