.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -67 # instrumentation
cmovnle rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdx]
bts edi, 248
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
bt bx, cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
or dil, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or bx, cx
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
xor rcx, -2
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
xor bl, cl
test bl, bl
cmovnle ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
test sil, cl
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
