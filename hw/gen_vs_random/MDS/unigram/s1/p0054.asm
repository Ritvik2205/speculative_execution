.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 49
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
bts rcx, 115
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
cmovnl ecx, edi
or dl, -115
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 55
not si
not al
or dil, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 36
and eax, -872608366
and dl, -33 # instrumentation
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
