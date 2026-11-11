.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 35
btr eax, eax
cmovb bx, dx
and dl, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
cmovo ebx, eax
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor dil, bl
bts di, si
cmovb dx, dx
cmovle di, bx
cmovns esi, edi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 99
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 33
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
cmovnb rcx, rsi
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
