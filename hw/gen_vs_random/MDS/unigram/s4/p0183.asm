.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr si, si
xor al, -19
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovnbe ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
or cl, dl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
bts eax, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
cmovl ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
test bl, -9
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 95
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
